.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->-$$Nest$mdismissWindow(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
