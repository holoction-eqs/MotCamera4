.class public final synthetic Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent$dualCaptureLayoutTriggeredListener$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent$dualCaptureLayoutTriggeredListener$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent$dualCaptureLayoutTriggeredListener$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent$dualCaptureLayoutTriggeredListener$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent$dualCaptureLayoutTriggeredListener$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
