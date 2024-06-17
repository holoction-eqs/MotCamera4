.class public final synthetic Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/DialogPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/DialogPopup;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/DialogPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/DialogPopup;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup;->mAlertPopup:Lcom/motorola/camera/ui/widgets/AlertPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    :cond_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup;->mAlertPopup:Lcom/motorola/camera/ui/widgets/AlertPopup;

    if-eqz p0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mNegativeOnCancel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mNegativeClickListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;->onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    :cond_2
    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup;->mAlertPopup:Lcom/motorola/camera/ui/widgets/AlertPopup;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
