.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final LISTENED_STATES:Ljava/util/Set;

.field public static final formatter:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public final lifecycleOwner:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;

.field public final viewModel:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/base/Joiner;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->LISTENED_STATES:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    iget-object v0, v0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    const-string v1, "StateKeyCollectionBuilde\u2026TES)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->LISTENED_STATES:Ljava/util/Set;

    const-string v0, "HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    const-string v1, "ofPattern(\"HH:mm:ss.SSS\")"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->formatter:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "eventHandler"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;

    invoke-direct {p2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->lifecycleOwner:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "view.context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->LISTENED_STATES:Ljava/util/Set;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    return-void
.end method

.method public final listen(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/lifecycle/Transformations$map$1;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p3}, Landroidx/lifecycle/Transformations$map$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    const/4 p3, 0x1

    invoke-direct {p1, p3, v0}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->lifecycleOwner:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;

    invoke-virtual {p2, p0, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final listenPair(Landroid/widget/TextView;Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Lkotlin/coroutines/CoroutineContext$plus$1;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p4, p3, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;-><init>(Landroid/widget/TextView;Lkotlin/coroutines/CoroutineContext$plus$1;Landroidx/lifecycle/MutableLiveData;I)V

    new-instance v1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->lifecycleOwner:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;

    invoke-virtual {p2, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;

    invoke-direct {v0, p1, p4, p2, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;-><init>(Landroid/widget/TextView;Lkotlin/coroutines/CoroutineContext$plus$1;Landroidx/lifecycle/MutableLiveData;I)V

    new-instance p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p1, v2, v0}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, p0, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final setupTextView(I)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
