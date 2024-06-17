.class public final synthetic Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    const-string v2, "setCurrentState"

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;

    const-string v4, "this$0"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->lifecycleOwner:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;->registry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v3, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    if-ne v3, v1, :cond_0

    invoke-virtual {p0, v2}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    :cond_0
    return-void

    :pswitch_1
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->inflateViewStub()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->lifecycleOwner:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;->registry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->coreModule:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    const v2, 0x7f0a006d

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aperture:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->isoGain:Landroidx/lifecycle/MutableLiveData;

    sget-object v5, Lkotlin/coroutines/CoroutineContext$plus$1;->INSTANCE$1:Lkotlin/coroutines/CoroutineContext$plus$1;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listenPair(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Lkotlin/coroutines/CoroutineContext$plus$1;)V

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->viewfinderFrameRate:Landroidx/lifecycle/MutableLiveData;

    const v3, 0x7f0a01e2

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->glFrameRate:Landroidx/lifecycle/MutableLiveData;

    sget-object v5, Lkotlin/coroutines/CoroutineContext$plus$1;->INSTANCE$2:Lkotlin/coroutines/CoroutineContext$plus$1;

    invoke-virtual {p0, v3, v4, v2, v5}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listenPair(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Lkotlin/coroutines/CoroutineContext$plus$1;)V

    const v2, 0x7f0a01b0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->exposureTime:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$16:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a0490

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->cameraStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$18:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a031c

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewSize:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$19:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a01d7

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->focusStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$20:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a01d6

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->focusDistance:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$21:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a0258

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lensPosition:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$22:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a0268

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lux:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$23:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a0269

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->luxIdx:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$22:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a008a

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->awbCct:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$23:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a0374

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneFlicker:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$24:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a008b

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->awbDecision:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$25:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a0339

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->realGain:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$26:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a041a

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->thermal:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$27:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v3, "get(SettingsManager.AI_SCENE_DETECTION).value"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0a005c

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aiScene:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$28:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a00b6

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->candidateScene:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$29:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    const v2, 0x7f0a0375

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneMode:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$1:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a0050

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->activeSensor:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$2:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a005b

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->adrcGain:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$3:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->memoryModule:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->liveDatas:Lcom/airbnb/lottie/model/MutablePair;

    const v2, 0x7f0a032f

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$4:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a0461

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, v0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v3, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$5:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v0, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v0, 0x7f0a031a

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewFrameTime:Landroidx/lifecycle/MutableLiveData;

    sget-object v3, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$6:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v0, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v0, 0x7f0a0162

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->arcsoftDrsd:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$8:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->motDrsdv2:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$9:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->bstDrsd:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$11:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->jgDrsd:Landroidx/lifecycle/MutableLiveData;

    sget-object v3, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$13:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v0, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v0, 0x7f0a02a5

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->motNVDetect:Landroidx/lifecycle/MutableLiveData;

    sget-object v3, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$14:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v0, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    const v0, 0x7f0a0479

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->videoHdrState:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$15:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    return-void

    :goto_0
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->lifecycleOwner:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;->registry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v3, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    if-ne v3, v1, :cond_3

    invoke-virtual {p0, v2}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
