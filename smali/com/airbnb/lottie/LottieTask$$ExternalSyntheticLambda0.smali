.class public final synthetic Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;
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

    iput p2, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$androidx$room$InvalidationTracker$$InternalSyntheticLambda$1$7002e9fde3521f548f6f7d8407c3101ba51ad0ca9c2ca5cd33fee50c4f3a9c31$0()V
    .locals 4

    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/room/InvalidationTracker;

    iget-object v0, p0, Landroidx/room/InvalidationTracker;->trackerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroidx/room/InvalidationTracker;->initialized:Z

    iget-object v2, p0, Landroidx/room/InvalidationTracker;->observedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v2, Landroidx/room/InvalidationTracker$ObservedTableTracker;->triggerStates:[Z

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([ZZ)V

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroidx/room/InvalidationTracker$ObservedTableTracker;->needsSync:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    iget-object p0, p0, Landroidx/room/InvalidationTracker;->cleanupStatement:Landroidx/sqlite/db/SupportSQLiteStatement;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final run$com$motorola$camera$cli$content$CliContentManager$$InternalSyntheticLambda$5$e0c1c71ac56111a00efdb43a9ef5b5de07727c9f73794912b1357975b3cd0a2f$0()V
    .locals 3

    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cli/content/CliContentManager;

    sget-object v0, Lcom/motorola/camera/cli/content/CliContentManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget-boolean v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-eqz v2, :cond_0

    iget v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->closeCameraCartoonContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_f

    :pswitch_1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    sget v0, Lcom/google/android/gms/internal/base/zau;->$r8$clinit:I

    const-string v0, "$callbacksCopy"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->isCancelled:Z

    if-nez v0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/countdown/TimerCountdownCallback;

    invoke-interface {v0}, Lcom/motorola/camera/countdown/TimerCountdownCallback;->onCountDownFinish()V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->removeSelf:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    :cond_1
    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->acquireCliWakeLock()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->run$com$motorola$camera$cli$content$CliContentManager$$InternalSyntheticLambda$5$e0c1c71ac56111a00efdb43a9ef5b5de07727c9f73794912b1357975b3cd0a2f$0()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinnerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->setButtonsEnabled(Z)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/CameraApp;

    sget-object v0, Lcom/motorola/camera/CameraApp;->LOCALES_RTL:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_ACCELERATE:Z

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznx;->INSTANCE:Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->init(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->deinit()V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v2, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->init(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->init(Landroid/content/Context;)V

    :cond_4
    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->mKeyExistsMap:Ljava/util/HashMap;

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ActivityBase;

    iget-boolean v0, p0, Lcom/motorola/camera/ActivityBase;->mSkippedFirstOnResume:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/motorola/camera/ActivityBase;->mSkippedFirstOnResume:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->onResumeTasks()V

    :cond_5
    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    iput-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-virtual {p0, v4}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/zzu;

    iput-boolean v2, p0, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzu;->continueSettlingToState(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v2, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    if-ne v2, v1, :cond_7

    iget p0, p0, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    invoke-virtual {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    :cond_7
    :goto_2
    return-void

    :pswitch_b
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/LottieDrawable;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setProgress(F)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    throw p0

    :catch_0
    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_4
    return-void

    :pswitch_c
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :pswitch_d
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;

    sget v0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->$r8$clinit:I

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-eqz v0, :cond_9

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->job:Lkotlinx/coroutines/JobImpl;

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_9
    return-void

    :pswitch_e
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-eqz v0, :cond_a

    goto/16 :goto_7

    :cond_a
    iget-object v0, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    const-string v1, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    iget-object v0, v0, Landroidx/work/Data;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_b

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :cond_b
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    const-string v1, "get()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    move v2, v4

    :cond_d
    if-eqz v2, :cond_e

    sget-object v1, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    const-string v2, "No worker to delegate to."

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    iget-object v1, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object v1, v1, Landroidx/work/WorkerParameters;->mWorkerFactory:Landroidx/work/WorkerFactory$1;

    iget-object v2, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->workerParameters:Landroidx/work/WorkerParameters;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Landroidx/work/WorkerFactory$1;->createWorkerWithDefaultFallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->delegate:Landroidx/work/ListenableWorker;

    if-nez v1, :cond_f

    sget-object v1, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    const-string v2, "No worker to delegate to."

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    iget-object v1, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object v1

    const-string v2, "getInstance(applicationContext)"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v2

    iget-object v4, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object v4, v4, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id.toString()"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v2

    if-nez v2, :cond_10

    :goto_5
    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    const-string v0, "future"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    new-instance v0, Landroidx/work/ListenableWorker$Result$Failure;

    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-direct {v0, v1}, Landroidx/work/ListenableWorker$Result$Failure;-><init>(Landroidx/work/Data;)V

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_10
    new-instance v4, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;

    iget-object v1, v1, Landroidx/work/impl/WorkManagerImpl;->mTrackers:Landroidx/work/WorkQuery$Builder;

    const-string v5, "workManagerImpl.trackers"

    invoke-static {v1, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v1, p0}, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;-><init>(Landroidx/work/WorkQuery$Builder;Landroidx/work/impl/constraints/WorkConstraintsCallback;)V

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v4, v1}, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->replace(Ljava/lang/Iterable;)V

    iget-object v1, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object v1, v1, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id.toString()"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->areAllConstraintsMet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Constraints met for delegate "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->delegate:Landroidx/work/ListenableWorker;

    invoke-static {v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->startWork()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v1

    const-string v2, "delegate!!.startWork()"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v4, 0x13

    invoke-direct {v2, v4, p0, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object v4, v4, Landroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v4}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v1

    sget-object v2, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    const-string v4, "Delegated worker "

    const-string v5, " threw exception in startWork."

    invoke-static {v4, v3, v5}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v5, 0x3

    if-gt v4, v5, :cond_11

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-boolean v3, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->areConstraintsUnmet:Z

    if-eqz v3, :cond_12

    const-string v3, "Constraints were unmet, Retrying."

    invoke-virtual {v0, v2, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    const-string v0, "future"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/ListenableWorker$Result$Retry;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$Result$Retry;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    const-string v0, "future"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/ListenableWorker$Result$Failure;

    sget-object v2, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-direct {v0, v2}, Landroidx/work/ListenableWorker$Result$Failure;-><init>(Landroidx/work/Data;)V

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_6
    monitor-exit v1

    goto :goto_7

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_13
    sget-object v1, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Constraints not met for delegate "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Requesting retry."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    const-string v0, "future"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/ListenableWorker$Result$Retry;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$Result$Retry;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    :goto_7
    return-void

    :pswitch_f
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/work/CoroutineWorker;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/CoroutineWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-eqz v0, :cond_14

    iget-object p0, p0, Landroidx/work/CoroutineWorker;->job:Lkotlinx/coroutines/JobImpl;

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_14
    return-void

    :pswitch_10
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->run$androidx$room$InvalidationTracker$$InternalSyntheticLambda$1$7002e9fde3521f548f6f7d8407c3101ba51ad0ca9c2ca5cd33fee50c4f3a9c31$0()V

    return-void

    :pswitch_11
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/ui/PlayerControlView;

    sget-object v0, Landroidx/media3/ui/PlayerControlView;->PLAYBACK_SPEEDS:[F

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateProgress()V

    return-void

    :pswitch_12
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/ui/DefaultTimeBar;

    sget v0, Landroidx/media3/ui/DefaultTimeBar;->$r8$clinit:I

    invoke-virtual {p0, v2}, Landroidx/media3/ui/DefaultTimeBar;->stopScrubbing(Z)V

    return-void

    :pswitch_13
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_15

    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v2, v2, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    goto :goto_8

    :cond_15
    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_16
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_17
    iput-object v3, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v3, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    return-void

    :pswitch_14
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    if-eqz v1, :cond_18

    goto :goto_9

    :cond_18
    iget-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_19

    goto :goto_9

    :cond_19
    if-gez v1, :cond_1a

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    monitor-exit v2

    goto :goto_9

    :catchall_3
    move-exception p0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    throw p0

    :cond_1a
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->flushInternal()V

    :goto_9
    monitor-exit v0

    return-void

    :catchall_4
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw p0

    :pswitch_15
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void

    :pswitch_16
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    if-eqz v0, :cond_1b

    goto :goto_a

    :cond_1b
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->session:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_1c
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iput-boolean v4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    :goto_a
    return-void

    :pswitch_17
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0, v4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/16 v2, 0x404

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->release()V

    return-void

    :pswitch_18
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/StreamVolumeManager;

    sget v0, Lcom/motorola/camera/SecureCamera$1;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    return-void

    :pswitch_19
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    return-void

    :pswitch_1a
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/ComponentDialog;

    invoke-static {p0}, Landroidx/activity/ComponentDialog;->$r8$lambda$3VrmmHeIN9Sasz9FquQXdvV7x_o(Landroidx/activity/ComponentDialog;)V

    return-void

    :pswitch_1b
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/ComponentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :pswitch_1c
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/LottieTask;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    if-nez v0, :cond_1d

    goto :goto_e

    :cond_1d
    iget-object v1, v0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1f

    monitor-enter p0

    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieListener;

    invoke-interface {v2, v1}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_b

    :cond_1e
    monitor-exit p0

    goto :goto_e

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1f
    iget-object v0, v0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    monitor-enter p0

    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v1, "Lottie encountered an error but no failure listener was added:"

    invoke-static {v1, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieListener;

    invoke-interface {v2, v0}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_c

    :cond_21
    :goto_d
    monitor-exit p0

    :goto_e
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0

    :goto_f
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession$enumunboxing$(Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    invoke-static {v0, p0, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->-$$Nest$mcheckComplete(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

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
        :pswitch_0
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
    .end packed-switch
.end method
