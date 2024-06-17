.class public final Lkotlin/DeepRecursiveFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;
.implements Landroidx/work/multiprocess/RemoteDispatcher;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;
.implements Lcom/google/gson/internal/ObjectConstructor;
.implements Landroidx/databinding/InverseBindingListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public block:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    iput v0, p0, Lkotlin/DeepRecursiveFunction;->$r8$classId:I

    .line 1
    const-class v1, Lcom/google/mlkit/common/internal/MlKitComponentDiscoveryService;

    invoke-direct {p0, v1, v0}, Lkotlin/DeepRecursiveFunction;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lkotlin/DeepRecursiveFunction;->$r8$classId:I

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(L_COROUTINE/_BOUNDARY;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lkotlin/DeepRecursiveFunction;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lkotlin/DeepRecursiveFunction;->$r8$classId:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 8
    iput p2, p0, Lkotlin/DeepRecursiveFunction;->$r8$classId:I

    iput-object p1, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;)V
    .locals 0

    .line 9
    const/16 p1, 0x13

    iput p1, p0, Lkotlin/DeepRecursiveFunction;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/DeepRecursiveFunction;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/gson/JsonIOException;

    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final createSubscription(Ljava/lang/Object;Lkotlin/reflect/KClass;Landroid/app/Activity;Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$consumeWindowLayoutInfo$1;)Landroidx/window/core/ConsumerAdapter$createSubscription$1;
    .locals 4

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/window/core/ConsumerAdapter$ConsumerHandler;

    invoke-direct {v0, p2, p4}, Landroidx/window/core/ConsumerAdapter$ConsumerHandler;-><init>(Lkotlin/reflect/KClass;Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$consumeWindowLayoutInfo$1;)V

    iget-object p2, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ClassLoader;

    const/4 p4, 0x1

    new-array v1, p4, [Ljava/lang/Class;

    invoke-virtual {p0}, Lkotlin/DeepRecursiveFunction;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "newProxyInstance(loader,\u2026onsumerClass()), handler)"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/Activity;

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lkotlin/DeepRecursiveFunction;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, p4

    const-string v2, "addWindowLayoutInfoListener"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    new-array p4, p4, [Ljava/lang/Class;

    invoke-virtual {p0}, Lkotlin/DeepRecursiveFunction;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, p4, v3

    const-string p0, "removeWindowLayoutInfoListener"

    invoke-virtual {p3, p0, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-instance p3, Landroidx/window/core/ConsumerAdapter$createSubscription$1;

    invoke-direct {p3, p0, p1, p2}, Landroidx/window/core/ConsumerAdapter$createSubscription$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final execute(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteCallback;)V
    .locals 2

    check-cast p1, Landroidx/work/multiprocess/IListenableWorkerImpl;

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Landroidx/work/multiprocess/RemoteListenableWorker;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mWorkerParameters:Landroidx/work/WorkerParameters;

    invoke-direct {v0, p0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;-><init>(Landroidx/work/WorkerParameters;)V

    invoke-static {v0}, Lokio/SegmentPool;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p0

    check-cast p1, Landroidx/work/multiprocess/IListenableWorkerImpl$Stub$Proxy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.work.multiprocess.IListenableWorkerImpl"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, p1, Landroidx/work/multiprocess/IListenableWorkerImpl$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 10

    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/time/Clock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    new-instance v2, Landroidx/core/view/MenuHostHelper;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    const-string v5, "Null flags"

    if-eqz v4, :cond_5

    iput-object v4, v2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    const-wide/16 v6, 0x7530

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    const-wide/32 v6, 0x5265c00

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->build()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/datatransport/Priority;->HIGHEST:Lcom/google/android/datatransport/Priority;

    new-instance v2, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v2, v3}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_4

    iput-object v4, v2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->build()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/datatransport/Priority;->VERY_LOW:Lcom/google/android/datatransport/Priority;

    new-instance v2, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v2, v3}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_3

    iput-object v3, v2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    sget-object v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->NETWORK_UNMETERED:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    sget-object v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->DEVICE_IDLE:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    filled-new-array {v3, v4}, [Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_2

    iput-object v3, v2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->build()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {}, Lcom/google/android/datatransport/Priority;->values()[Lcom/google/android/datatransport/Priority;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;

    invoke-direct {v1, p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;-><init>(Lcom/google/android/datatransport/runtime/time/Clock;Ljava/util/Map;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not all priorities have been configured"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "missing required property: clock"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onChange()V
    .locals 4

    iget-object v0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingH407dpNormalImpl;

    iget-object v0, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object v0

    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingH407dpNormalImpl;

    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 8

    iget v0, p0, Lkotlin/DeepRecursiveFunction;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v4, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v4, Landroidx/appcompat/app/AppCompatDelegateImpl;

    if-eqz v3, :cond_1

    move-object p1, v0

    :cond_1
    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanels:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v4, :cond_2

    array-length v5, v4

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    if-eqz v6, :cond_3

    iget-object v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne v7, p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v3, :cond_5

    iget-object p1, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget p2, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    invoke-virtual {p1, p2, v6, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->callOnPanelClosed(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroidx/appcompat/view/menu/MenuBuilder;)V

    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0, v6, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0, v6, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_6
    :goto_3
    return-void

    :goto_4
    instance-of v0, p1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    :cond_7
    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_8

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 2

    iget v0, p0, Lkotlin/DeepRecursiveFunction;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-boolean p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    if-nez p0, :cond_0

    const/16 p0, 0x6c

    invoke-interface {v0, p0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :goto_0
    iget-object v0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/SubMenuBuilder;

    iget-object v0, v0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result p0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final perform(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-nez v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    if-ne v3, v2, :cond_3

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v1, :cond_4

    neg-int v0, v0

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v2

    :cond_5
    return v1
.end method

.method public final removeListener(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V
    .locals 3

    iget-object v0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    iget-object v2, v1, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->listener:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->released:Z

    iget-object v2, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/zzw;
    .locals 0

    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;

    new-instance p1, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    new-instance p1, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    :goto_0
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lkotlin/DeepRecursiveFunction;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentInfoCompat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Landroid/view/ContentInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final unsafeConsumerClass()Ljava/lang/Class;
    .locals 1

    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ClassLoader;

    const-string v0, "java.util.function.Consumer"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(\"java.util.function.Consumer\")"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
