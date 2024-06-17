.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final activityService:Landroid/app/ActivityManager;

.field public coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public isRunning:Z

.field public final liveDatas:Lcom/airbnb/lottie/model/MutablePair;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/airbnb/lottie/model/MutablePair;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/MutablePair;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->liveDatas:Lcom/airbnb/lottie/model/MutablePair;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->activityService:Landroid/app/ActivityManager;

    return-void
.end method
