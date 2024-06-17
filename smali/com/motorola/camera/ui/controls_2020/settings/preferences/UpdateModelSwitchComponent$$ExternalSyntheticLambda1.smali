.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    const-string v0, "$it"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    invoke-interface {p0, p2}, Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;->onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V

    return-void

    :goto_0
    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    invoke-interface {p0, p2}, Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;->onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
