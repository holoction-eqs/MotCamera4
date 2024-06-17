.class public final synthetic Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;ZI)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda3;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda3;->f$1:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    const-string v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->autoZoom:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v1, :cond_0

    const v1, 0x7f120510

    goto :goto_0

    :cond_0
    const v1, 0x7f12050f

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :goto_1
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->autoCapture:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v1, :cond_2

    const v1, 0x7f12050e

    goto :goto_2

    :cond_2
    const v1, 0x7f12050d

    :goto_2
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
