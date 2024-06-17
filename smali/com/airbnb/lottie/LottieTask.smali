.class public final Lcom/airbnb/lottie/LottieTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXECUTOR:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final failureListeners:Ljava/util/LinkedHashSet;

.field public final handler:Landroid/os/Handler;

.field public volatile result:Lcom/airbnb/lottie/LottieResult;

.field public final successListeners:Ljava/util/LinkedHashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieTask;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/LinkedHashSet;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieResult;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieTask;->setResult(Lcom/airbnb/lottie/LottieResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p2, p1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieTask;->setResult(Lcom/airbnb/lottie/LottieResult;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/airbnb/lottie/LottieTask;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;-><init>(Lcom/airbnb/lottie/LottieTask;Ljava/util/concurrent/Callable;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final setResult(Lcom/airbnb/lottie/LottieResult;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    new-instance p1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A task may only be set once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
