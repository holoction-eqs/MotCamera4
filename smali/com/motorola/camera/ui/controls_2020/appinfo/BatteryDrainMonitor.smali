.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final batteryManager:Landroid/os/BatteryManager;

.field public coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public currentMa:D

.field public final liveData:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Landroid/os/BatteryManager;Landroidx/lifecycle/MutableLiveData;)V
    .locals 1

    const-string v0, "liveData"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->batteryManager:Landroid/os/BatteryManager;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->liveData:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method
