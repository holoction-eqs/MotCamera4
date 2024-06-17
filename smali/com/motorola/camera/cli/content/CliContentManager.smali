.class public final Lcom/motorola/camera/cli/content/CliContentManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;
.implements Lcom/motorola/camera/cli/CliEventListener;


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final animationSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public final animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

.field public final cartoonFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

.field public final cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

.field public final context:Landroid/content/Context;

.field public final controller:Lcom/motorola/camera/Controller;

.field public final dualPreviewListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

.field public final fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final isCliDisplay:Z

.field public final mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public final previewFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda1;

.field public final showContentAllowed$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

.field public final timeoutRunnable:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/motorola/camera/cli/content/CliContentManager;

    const-string v3, "showContentAllowed"

    const-string v4, "getShowContentAllowed()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/camera/cli/content/CliContentManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/motorola/camera/Controller;ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fsmContext"

    invoke-static {p4, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->controller:Lcom/motorola/camera/Controller;

    iput-boolean p3, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    iput-object p4, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p3, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p2, p0}, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/motorola/camera/cli/content/CliContentManager;->showContentAllowed$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    new-instance p2, Lcom/motorola/camera/cli/content/CliContentManager$Status;

    invoke-direct {p2}, Lcom/motorola/camera/cli/content/CliContentManager$Status;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    new-instance p2, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 p3, 0x19

    invoke-direct {p2, p0, p3}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cartoonFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/cli/content/CliPresentationHolder;

    invoke-direct {p2, p1, p0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;-><init>(Landroid/app/Activity;Lcom/motorola/camera/cli/CliEventListener;)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, p3}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->dualPreviewListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    new-instance p1, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->previewFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final changeAnimationContentStatus()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget-boolean v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-eqz v2, :cond_0

    iget v3, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    const/high16 v4, 0x40c00000    # 6.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->showContent(I)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    :cond_1
    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final changeDualPreviewContentStatus()V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->showContent(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->closeContent(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->updateAutoGestureCapture()V

    return-void
.end method

.method public final closeCameraCartoonContent()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->closeContent(I)V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final closeContent(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.camera3.EXTRA_ACTION"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.EXTRA_CONTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final finishContentActivity()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/arch/view/BaseViewModel;

    check-cast v0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/cli/content/CliContentViewModel;->close(Z)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    iput-boolean v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
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

.method public final finishPresentationHolder()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->finishContentActivity()V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->isInitialized:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;->getCurrentPresentation()Lcom/motorola/camera/arch/view/BasePresentation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->isInitialized:Z

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/arch/view/BaseViewModel;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/arch/view/BaseViewModel;->onDestroy(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    const-string v0, "StateKeyCollectionBuilde\u2026                 .build()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onRotationChanged(II)V
    .locals 2

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.EXTRA_ACTION"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.motorola.camera3.EXTRA_ORIENTATION"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final showContent(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->showContentAllowed$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    sget-object v1, Lcom/motorola/camera/cli/content/CliContentManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.camera3.EXTRA_ACTION"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.EXTRA_CONTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iput-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    const-string v0, "changeEvent.context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->finishContentActivity()V

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget-boolean v2, v2, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v2, :cond_8

    :goto_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    const-string v0, "changeEvent.context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->updateAutoGestureCapture()V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    const-string v0, "changeEvent.context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->changeDualPreviewContentStatus()V

    goto :goto_3

    :cond_6
    :goto_1
    invoke-virtual {p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateVideoState(I)V

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {p0, v2}, Lcom/motorola/camera/cli/content/CliContentManager;->updateVideoState(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final updateAutoGestureCapture()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iget-boolean p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result p0

    const/4 v1, 0x0

    const-string v2, "gestureCapture"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cartoonFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cartoonFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->closeCameraCartoonContent()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget-boolean p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->previewFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->previewFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/CliContentManager;->closeContent(I)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final updateVideoState(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.camera3.EXTRA_ACTION"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.EXTRA_CONTENT"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.VIDEO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
