.class public final Lcom/motorola/camera/utility/lens/LensApiHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final instance$delegate:Lkotlin/SynchronizedLazyImpl;


# instance fields
.field public final googleLensCallbacks:Ljava/util/Set;

.field public googleLensStatusChecked:Z

.field public initJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public isGoogleLensAvailable:Z

.field public isInitialized:Z

.field public selectedApi:Lcom/motorola/camera/utility/lens/LensApiWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->INSTANCE$19:Lcom/motorola/camera/utility/ForegroundRunner$handler$2;

    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/motorola/camera/utility/lens/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "synchronizedSet(HashSet())"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final declared-synchronized checkGoogleLensAvailability(Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensStatusChecked:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;->onStatusChecked()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-boolean p1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->isInitialized:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/utility/lens/LensApiHelper;->initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized initialize()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v3, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;-><init>(Lcom/motorola/camera/utility/lens/LensApiHelper;JLkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v2, v4, v1, v3, v0}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->initJob:Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->isInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isGoogleLensAvailable()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->isInitialized:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->selectedApi:Lcom/motorola/camera/utility/lens/LensApiWrapper;

    iget-object v2, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->initJob:Lkotlinx/coroutines/StandaloneCoroutine;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-boolean v0, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensStatusChecked:Z

    iput-boolean v0, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable:Z

    iget-object v0, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
