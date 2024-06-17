.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method public synthetic constructor <init>(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurface(Landroid/view/Surface;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/CaptureRequest$Builder;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
