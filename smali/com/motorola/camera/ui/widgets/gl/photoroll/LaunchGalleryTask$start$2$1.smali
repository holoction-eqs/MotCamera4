.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $customAnimation:Z

.field public final synthetic $isCliDisplay:Z

.field public final synthetic $onComplete:Lkotlin/jvm/functions/Function1;

.field public final synthetic $result:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

.field public final synthetic $view:Landroid/view/View;

.field public label:I


# direct methods
.method public constructor <init>(ZZLcom/motorola/camera/Util$ActivityLaunchRequestInfo;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$customAnimation:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$isCliDisplay:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$result:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$view:Landroid/view/View;

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$customAnimation:Z

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$isCliDisplay:Z

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$result:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$view:Landroid/view/View;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;-><init>(ZZLcom/motorola/camera/Util$ActivityLaunchRequestInfo;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$customAnimation:Z

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$result:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    if-eqz p1, :cond_a

    sget-boolean p1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->isPRCFilmstripTransitionSupported:Z

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->mPhotosVersion:[I

    aget v5, p1, v4

    const/4 v6, 0x6

    if-gt v5, v6, :cond_4

    if-ne v5, v6, :cond_3

    aget p1, p1, v2

    const/16 v5, 0x20

    if-lt p1, v5, :cond_3

    goto :goto_0

    :cond_3
    move p1, v4

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_5

    invoke-static {}, Lcom/motorola/camera/Util;->setupGalleryWithCustomAnimation()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$isCliDisplay:Z

    if-nez p1, :cond_5

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_2

    :cond_5
    move p1, v4

    :goto_2
    if-eqz p1, :cond_a

    iget-object p1, v3, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    const-string v5, "processing_uri_intent_extra"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v5, "accelerometer_rotation"

    invoke-static {p1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_6

    move v4, v2

    :cond_6
    if-nez v4, :cond_a

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$view:Landroid/view/View;

    instance-of v4, p1, Landroid/widget/ImageView;

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    move-object v4, p1

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v5, v4, Landroid/app/Activity;

    if-eqz v5, :cond_8

    check-cast v4, Landroid/app/Activity;

    goto :goto_3

    :cond_8
    move-object v4, v1

    :goto_3
    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    iget-object v5, v3, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    const-string v6, "use_shared_element_snapshot_for_thumbnail"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$setupFilmstripTransition$1;

    invoke-direct {v5, p1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$setupFilmstripTransition$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    const-string v5, "photos:filmstrip_transition_view"

    invoke-static {v4, p1, v5}, Landroidx/core/app/ActivityOptionsCompat$Api21Impl;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v3, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->bundle:Landroid/os/Bundle;

    :cond_a
    :goto_4
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v5, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->label:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/DelayKt;->withContext(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_b

    return-object v0

    :cond_b
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
