.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $customAnimation:Z

.field public final synthetic $data:Lcom/motorola/camera/CameraData;

.field public final synthetic $isCliDisplay:Z

.field public final synthetic $isSplitMode:Z

.field public final synthetic $onComplete:Lkotlin/jvm/functions/Function1;

.field public final synthetic $view:Landroid/view/View;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$data:Lcom/motorola/camera/CameraData;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$isSplitMode:Z

    iput-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$isCliDisplay:Z

    iput-boolean p5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$customAnimation:Z

    iput-object p6, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$onComplete:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$data:Lcom/motorola/camera/CameraData;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$view:Landroid/view/View;

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$isSplitMode:Z

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$isCliDisplay:Z

    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$customAnimation:Z

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$onComplete:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;-><init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$isCliDisplay:Z

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$customAnimation:Z

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$data:Lcom/motorola/camera/CameraData;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$view:Landroid/view/View;

    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$isSplitMode:Z

    invoke-static {v3, v4, v5, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->getGalleryIntent(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZZ)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object v9

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    check-cast p1, Lkotlinx/coroutines/android/HandlerContext;

    iget-object p1, p1, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;

    iget-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$customAnimation:Z

    iget-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$isCliDisplay:Z

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$view:Landroid/view/View;

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->$onComplete:Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;-><init>(ZZLcom/motorola/camera/Util$ActivityLaunchRequestInfo;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/DelayKt;->withContext(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
