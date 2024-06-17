.class public final Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/device/callables/CameraCallable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/device/callables/CameraCallable;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureBufferLost(Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureBufferLost(Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureSequenceAborted()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureSequenceAborted()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureSequenceAborted()V

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureSequenceAborted()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureSequenceCompleted()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureSequenceCompleted()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureSequenceCompleted()V

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureSequenceCompleted()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
