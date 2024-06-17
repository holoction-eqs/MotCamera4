.class public final synthetic Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    const-string v2, "this$0"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->enableZoomToggle(Z)V

    return-void

    :goto_0
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;ZI)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lkotlin/UByte$Companion;->setAutoCaptureEnable(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
