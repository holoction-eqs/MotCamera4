.class public final Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final mCaptureQueueSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;->mCaptureQueueSize:I

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 1

    sget-object p1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p1, Lcom/motorola/camera/saving/SaveImageService;->mMemoryAvailableListener:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;->mCaptureQueueSize:I

    if-ge p2, p0, :cond_1

    add-int/lit8 p2, p2, 0x1

    const/4 p0, 0x0

    iget v0, v0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    invoke-static {v0, p2, p0}, Lcom/motorola/camera/saving/SaveImageService;->canSave(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/motorola/camera/saving/SaveImageService;->mMemoryAvailableListener:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda8;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object p1, p1, Lcom/motorola/camera/saving/SaveImageService;->mCaptureQueueListener:Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_1
    return-void
.end method
