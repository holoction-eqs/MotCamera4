.class public final Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public L$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

.field public L$1:Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->label:I

    iget-object p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    invoke-static {p1, p0}, Lcom/motorola/camera/service/CameraForegroundProcessingService;->access$startProcessing(Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
