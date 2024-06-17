.class public final Lcom/airbnb/lottie/parser/DropShadowEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lcom/motorola/camera/device/callables/CloseSessionListener;


# instance fields
.field public color:Ljava/lang/Object;

.field public direction:Ljava/lang/Object;

.field public distance:Ljava/lang/Object;

.field public opacity:Ljava/lang/Object;

.field public radius:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    iput-object p1, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    iput-object p1, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    iput-object p1, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    iput-object p1, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/google/android/gms/signin/SignInOptions;->zaa:Lcom/google/android/gms/signin/SignInOptions;

    iput-object p1, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    iput-object p2, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    iput-object p3, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    iput-object p4, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    iput-object p5, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/util/ListIterator;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    iput-object p3, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    iput-object p4, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    iput-object p5, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    iput-object p1, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;Lkotlin/Lazy;)V
    .locals 1

    .line 6
    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegateForDefaultTypeQualifiers"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    iput-object p2, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    iput-object p3, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    check-cast p3, Lkotlin/Lazy;

    iput-object p3, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    new-instance p1, Landroidx/work/WorkQuery;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;

    invoke-direct {p1, p0, p2}, Landroidx/work/WorkQuery;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;)V

    iput-object p1, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Lcom/google/android/gms/common/internal/GmsClient;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/service/zao;

    iget-object v1, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    invoke-static {v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    iget-object p0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaz;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance p0, Lcom/google/android/gms/common/moduleinstall/internal/zau;

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/gms/common/moduleinstall/internal/zau;-><init>(Lcom/google/android/gms/common/internal/service/zao;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/GmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/internal/base/zaa;->zab:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/base/zac;->zae(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/base/zac;->zad(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p0, 0x0

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/base/zac;->zae(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/base/zaa;->zac(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final build()Lcom/google/android/gms/common/internal/ClientSettings;
    .locals 7

    new-instance v6, Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/accounts/Account;

    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/collection/ArraySet;

    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object p0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lcom/google/android/gms/signin/SignInOptions;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/ClientSettings;-><init>(Landroid/accounts/Account;Landroidx/collection/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/SignInOptions;)V

    return-object v6
.end method

.method public final getModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    return-object p0
.end method

.method public final getStorageManager()Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    return-object p0
.end method

.method public final onSessionClose()V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearModesBuilders()V

    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    :goto_0
    iget-object p0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/device/callables/CloseSessionListener;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/motorola/camera/device/callables/CloseSessionListener;

    invoke-interface {p0}, Lcom/motorola/camera/device/callables/CloseSessionListener;->onSessionClose()V

    :cond_1
    return-void
.end method
