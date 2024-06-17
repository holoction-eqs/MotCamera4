.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $onComplete:Lkotlin/jvm/functions/Function1;

.field public final synthetic $result:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;->$result:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-direct {p0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;->$result:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;->$result:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
