.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->label:I

    const-wide v3, 0x408f400000000000L    # 1000.0

    const/4 v5, 0x2

    const-string v6, "<this>"

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v7, :cond_0

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->L$0:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v8, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    iget-object v9, v8, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->batteryManager:Landroid/os/BatteryManager;

    invoke-static {v9, v6}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v9, v3

    iput-wide v9, v8, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->currentMa:D

    iget-object v8, v8, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->liveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    move-object v8, v0

    :cond_2
    :goto_0
    invoke-static {v8}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    iget-object v9, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, v9, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->batteryManager:Landroid/os/BatteryManager;

    invoke-static {v0, v6}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    int-to-double v12, v0

    div-double/2addr v12, v3

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v12, v14

    iget-wide v14, v9, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->currentMa:D

    const-wide v16, 0x3fefae147ae147aeL    # 0.99

    mul-double v14, v14, v16

    add-double/2addr v14, v12

    iput-wide v14, v9, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->currentMa:D

    iget-object v0, v9, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->liveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    const-wide/16 v9, 0x21

    sub-long/2addr v9, v12

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-lez v0, :cond_2

    :try_start_1
    iput-object v8, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->L$0:Ljava/lang/Object;

    iput v7, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->label:I

    invoke-static {v9, v10, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_2

    return-object v2

    :goto_1
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    goto :goto_0

    :cond_3
    iget-object v0, v9, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->liveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
