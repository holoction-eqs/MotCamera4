.class public final Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $startTime:J

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/util/Iterator;

.field public L$2:Lcom/motorola/camera/utility/lens/LensApiWrapper;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/utility/lens/LensApiHelper;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/lens/LensApiHelper;JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->this$0:Lcom/motorola/camera/utility/lens/LensApiHelper;

    iput-wide p2, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->$startTime:J

    invoke-direct {p0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    new-instance v0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;

    iget-object v1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->this$0:Lcom/motorola/camera/utility/lens/LensApiHelper;

    iget-wide v2, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->$startTime:J

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;-><init>(Lcom/motorola/camera/utility/lens/LensApiHelper;JLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->L$2:Lcom/motorola/camera/utility/lens/LensApiWrapper;

    iget-object v4, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->L$1:Ljava/util/Iterator;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/motorola/camera/utility/lens/LensApiWrapper;

    new-instance v4, Lcom/motorola/camera/utility/lens/LensApiV2;

    invoke-direct {v4}, Lcom/motorola/camera/utility/lens/LensApiV2;-><init>()V

    aput-object v4, v1, v2

    new-instance v4, Lcom/motorola/camera/utility/lens/LensApiV1;

    invoke-direct {v4}, Lcom/motorola/camera/utility/lens/LensApiV1;-><init>()V

    aput-object v4, v1, v3

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v4, "arrayListOf(LensApiV2(), LensApiV1()).iterator()"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    move-object v4, v1

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->this$0:Lcom/motorola/camera/utility/lens/LensApiHelper;

    iget-object p1, p1, Lcom/motorola/camera/utility/lens/LensApiHelper;->selectedApi:Lcom/motorola/camera/utility/lens/LensApiWrapper;

    if-nez p1, :cond_4

    invoke-static {v5}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "apis.next()"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/motorola/camera/utility/lens/LensApiWrapper;

    iput-object v5, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->L$1:Ljava/util/Iterator;

    iput-object v1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->L$2:Lcom/motorola/camera/utility/lens/LensApiWrapper;

    iput v3, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->label:I

    invoke-interface {v1, p0}, Lcom/motorola/camera/utility/lens/LensApiWrapper;->isAvailable(Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->this$0:Lcom/motorola/camera/utility/lens/LensApiHelper;

    iput-object v1, p1, Lcom/motorola/camera/utility/lens/LensApiHelper;->selectedApi:Lcom/motorola/camera/utility/lens/LensApiWrapper;

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;->this$0:Lcom/motorola/camera/utility/lens/LensApiHelper;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->selectedApi:Lcom/motorola/camera/utility/lens/LensApiWrapper;

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_2

    :cond_5
    move p1, v2

    :goto_2
    iput-boolean p1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable:Z

    iput-boolean v3, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensStatusChecked:Z

    iget-object p1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    new-array v0, v2, [Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    array-length v1, p1

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toCollection(Ljava/util/HashSet;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->selectedApi:Lcom/motorola/camera/utility/lens/LensApiWrapper;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/motorola/camera/utility/lens/LensApiWrapper;->getStatus()I

    move-result v3

    :cond_6
    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->LENS_STATUS:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v1, v1, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;

    invoke-interface {p1}, Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;->onStatusChecked()V

    goto :goto_3

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
