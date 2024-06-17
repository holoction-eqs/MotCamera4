.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->notifyPostCaptureListeners()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->notifyPostCaptureListeners()V

    return-void

    :goto_0
    sget v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->notifyPostCaptureListeners()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
