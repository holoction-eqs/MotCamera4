.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget-object v0, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionProcess:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-eq v1, v2, :cond_0

    iget v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    invoke-static {v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->name(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelProcessing: transcode not running: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFile:Ljava/io/File;

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->eventHandler:Landroid/os/Handler;

    new-instance v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v3}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;I)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFile:Ljava/io/File;

    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    iput v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    :cond_2
    :goto_0
    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->CANCEL:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->processForAnalytics(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->DONE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
